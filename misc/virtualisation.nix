{ pkgs, ... }: {

# ██╗   ██╗██╗██████╗ ████████╗██╗   ██╗ █████╗ ██╗     ██╗███████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
# ██║   ██║██║██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██║     ██║██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
# ██║   ██║██║██████╔╝   ██║   ██║   ██║███████║██║     ██║███████╗███████║   ██║   ██║██║   ██║██╔██╗ ██║
# ╚██╗ ██╔╝██║██╔══██╗   ██║   ██║   ██║██╔══██║██║     ██║╚════██║██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
#  ╚████╔╝ ██║██║  ██║   ██║   ╚██████╔╝██║  ██║███████╗██║███████║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
#   ╚═══╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

# Virtualisation - Libvirt(QEMU/KVM) / Docker / LXD / WayDroid
  virtualisation = {
    # Docker.
    docker = {
      enable = false;
      storageDriver = "btrfs";
      daemon.settings = {
        # https://docs.docker.com/storage/containerd/
        "features" = {"containerd-snapshotter" = true;};
        # Enables pulling using containerd, which supports restarting from a partial pull.
      };
      rootless = {
        setSocketVariable = true;
        # Sets the DOCKER_HOST variable to the rootless Docker instance for normal users by default. 
      };
      # Start dockerd on boot.
      enableOnBoot = true;
      # This is required for containers which are created with the `--restart=always` flag to work.
    };
    # Podman.
    podman = {
      enable = true;
      # Create a `docker` alias for podman, to use it as a drop-in replacement.
      dockerCompat = true;
      # Required for containers under podman-compose to be able to talk to each other.
      defaultNetwork.settings.dns_enabled = true;
    };
    # Arion.
    #arion = {
    #  backend = "docker";
    #  backend = "podman";
    #  projects = {
    #    "db".settings.services."db".service = {
    #      image = "";
    #      restart = "unless-stopped";
    #      environment = { POSTGRESS_PASSWORD = "password"; };
    #    };
    #  };
    #};
    # Libvirtd.
    libvirtd = {
      enable = true;
      qemu.runAsRoot = true;
      # Hanging this option to false may cause file permission issues for existing guests.
      # To fix these, manually change ownership of affected files in /var/lib/libvirt/qemu to qemu-libvirtd.
    };
    # Lxd.
    lxd.enable = false;
    # Waydroid.
    waydroid.enable = false;
  };

  # Enable nested virsualization, required by security containers and nested vm.
  # This should be set per host in /hosts, not here.
  #
  ## For AMD CPU, add "kvm-amd" to kernelModules.
  # boot.kernelModules = ["kvm-amd"];
  # boot.extraModprobeConfig = "options kvm_amd nested=1";  # For amd cpu.
  #
  ## For Intel CPU, add "kvm-intel" to kernelModules.
  # boot.kernelModules = ["kvm-intel"];
  # boot.extraModprobeConfig = "options kvm_intel nested=1"; # For intel cpu.

  # Packages.
  environment.systemPackages = with pkgs; [
    # Need to add [File (in the menu bar) -> Add connection] when start for the first time
    virt-manager

    # QEMU/KVM(HostCpuOnly), provides:
    #   qemu-storage-daemon qemu-edid qemu-ga
    #   qemu-pr-helper qemu-nbd elf2dmp qemu-img qemu-io
    #   qemu-kvm qemu-system-x86_64 qemu-system-aarch64 qemu-system-i386
    qemu_kvm

    # Install QEMU(other architectures), provides:
    #   ......
    #   qemu-loongarch64 qemu-system-loongarch64
    #   qemu-riscv64 qemu-system-riscv64 qemu-riscv32  qemu-system-riscv32
    #   qemu-system-arm qemu-arm qemu-armeb qemu-system-aarch64 qemu-aarch64 qemu-aarch64_be
    #   qemu-system-xtensa qemu-xtensa qemu-system-xtensaeb qemu-xtensaeb
    #   ......
    qemu
    qemu_full

    # Distrobox.
    distrobox

    # Podman-compose.
    podman-compose
  ];

}
