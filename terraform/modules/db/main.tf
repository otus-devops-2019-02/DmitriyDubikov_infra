
resource "google_compute_instance" "db" {
  name         = "reddit-db"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags = ["reddit-db"]

  # определение загрузочного диска
  boot_disk {
    initialize_params {
      image = "${var.db_disk_image}"
    }
  }

  # определение сетевого интерфейса
  network_interface {
    # сеть, к которой присоединить данный интерфейс
    network = "default"

    # использовать ephemeral IP для доступа из Интернет
    access_config {}
  }

  metadata {
    # путь до публичного ключа
    ssh-keys = "ddi1:${file(var.public_key_path)}"
  }

  connection {
    type        = "ssh"
    user        = "ddi1"
    agent       = false
    private_key = "${file(var.private_key_path)}"
  }
}

# Правило firewall

resource "google_compute_firewall" "firewall_mongo" {
  name = "allow-mongo-default"

  # Название сети, в которой действует правило
  network = "default"

  # Какой доступ разрешить
  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }

  # Правило применимо для инстансов с перечисленными тэгами
  target_tags = ["reddit-db"]
  source_tags = ["reddit-app"]
}

