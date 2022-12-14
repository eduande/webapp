<div class="app-sidebar">
    <div class="logo">
        <a href="#" class="logo-icon" style="background: url(<?= _assets('images/sameitdeveloper.png') ?>) no-repeat; background-position: center center;background-size: 35px;"><span class="logo-text">APPCHAT</span></a>
        <div class="sidebar-user-switcher user-activity-online">
            <a href="#">
                <img src="<?= _assets() ?>/images/avatars/avatar.gif">
                <span class="activity-indicator"></span>
                <span class="user-info-text"><?= $user->username ?><br><span class="user-state-info">APPCHAT</span></span>
            </a>
        </div>
    </div>
    <div class="app-menu">
        <ul class="accordion-menu">
            <li class="sidebar-title">
                INICIO
            </li>
            <li>
                <a href="<?= base_url('home') ?>" class="active"><i class="material-icons-two-tone">dashboard</i>Dashboard</a>
            </li>
            <li class="sidebar-title">
                Aplicaciones
            </li>
            <li>
                <a href="<?= base_url('autoresponder') ?>" class="active"><i class="material-icons-two-tone">message</i>Respuesta automática</a>
            </li>
            <li>
                <a href="<?= base_url('contacts') ?>" class="active"><i class="material-icons-two-tone">contacts</i>Contacto | Número</a>
            </li>
            <li>
                <a href="<?= base_url('blast') ?>" class="active"><i class="material-icons-two-tone">question_answer</i>Campaña WA</a>
            </li>
            <li>
                <a href="<?= base_url('schedule') ?>" class="active"><i class="material-icons-two-tone">schedule</i>Mensaje programado</a>
            </li>
            <li>
                <a href="<?= base_url('send') ?>" class="active"><i class="material-icons-two-tone">send</i>Envío único</a>
            </li>
            <li>
                <a href="javascript:void()"><i class="material-icons-two-tone">report</i>Informes<i class="material-icons has-sub-menu">keyboard_arrow_right</i></a>
                <ul class="sub-menu">
                    <li>
                        <a href="<?= base_url("report/single") ?>">Mensajes individuales</a>
                    </li>
                    <li>
                        <a href="<?= base_url("report/received") ?>">Mensajes recibidos</a>
                    </li>
                    <li>
                        <a href="<?= base_url("report/api") ?>">Mensajes API</a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-title">
                Other
            </li>
            <li>
                <a href="<?= base_url('api') ?>" class="active"><i class="material-icons-two-tone">api</i>Rest Api</a>
            </li>
            <?php if ($user->level == 1) { ?>
                <li>
                    <a href="<?= base_url('users') ?>" class="active"><i class="material-icons-two-tone">account_circle</i>Usuarios</a>
                </li>
            <?php } ?>
            <li>
                <a href="<?= base_url('settings') ?>" class="active"><i class="material-icons-two-tone">settings</i>Ajustes</a>
            </li>
            <li>
                <a href="<?= base_url('logout') ?>" class="active"><i class="material-icons-two-tone">logout</i>Cerrar sesión</a>
            </li>
        </ul>
    </div>
</div>