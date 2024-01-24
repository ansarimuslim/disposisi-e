<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">Menu</div>
                    <a class="nav-link" href='<?php echo site_url('admin/menu') ?>'>
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Dashboard
                    </a>
                    <?php if($this->session->userdata('role') == "admin"){ ?>
                    <a class="nav-link" href="<?php echo site_url('admin/user'); ?>">
                        <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                        User
                    </a>
                    <a class="nav-link" href="<?php echo site_url('admin/surat_masuk'); ?>">
                        <div class="sb-nav-link-icon"><i class="fas fa-envelope"></i></div>
                        Surat Masuk
                    </a>
                    <a class="nav-link" href="<?php echo site_url('admin/surat_keluar'); ?>">
                        <div class="sb-nav-link-icon"><i class="fas fa-envelope-open"></i></div>
                        Surat Keluar
                    </a>
                    <a class="nav-link" href="<?php echo site_url('admin/disposisi'); ?>">
                        <div class="sb-nav-link-icon"><i class="fas fa-square-check"></i></div>
                        Disposisi
                    </a>
                    <?php }
                    if($this->session->userdata('role') == "sekretaris" || $this->session->userdata('role') == "admin"){ ?>
                    <a class="nav-link" href="<?php echo site_url('/surat_ajuan'); ?>">
                        <div class="sb-nav-link-icon"><i class="fas fa-envelope"></i></div>
                        Surat Ajuan
                    </a>
                    <a class="nav-link" href="<?php echo site_url('/templatesurat'); ?>">
                        <div class="sb-nav-link-icon"><i class="fas fa-envelope-open"></i></div>
                        Template Surat
                    </a>
                    <?php } ?>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                <?php echo $this->session->userdata('username');?>
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">