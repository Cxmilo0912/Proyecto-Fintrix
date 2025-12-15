<!DOCTYPE html>

<html class="dark" lang="es"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <title>Perfil y Configuración</title>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;700;800&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet"/>
        <style>
            .material-symbols-outlined {
                font-variation-settings:
                    'FILL' 0,
                    'wght' 400,
                    'GRAD' 0,
                    'opsz' 24;
            }
        </style>
        <script id="tailwind-config">
            tailwind.config = {
                darkMode: "class",
                theme: {
                    extend: {
                        colors: {
                            "primary": "#137fec",
                            "background-light": "#f6f7f8",
                            "background-dark": "#101922",
                        },
                        fontFamily: {
                            "display": ["Manrope", "sans-serif"]
                        },
                        borderRadius: {"DEFAULT": "1rem", "lg": "2rem", "xl": "3rem", "full": "9999px"},
                    },
                },
            }
        </script>
        <style>
            body {
                min-height: max(884px, 100dvh);
            }
        </style>
    </head>
    <body class="bg-background-light dark:bg-background-dark font-display">
        <div class="relative flex min-h-screen w-full flex-col group/design-root overflow-x-hidden">
            <!-- Top App Bar -->
            <header class="sticky top-0 z-10 flex h-14 items-center justify-between bg-background-light/80 px-4 py-2 backdrop-blur-sm dark:bg-background-dark/80">
                <div class="flex size-10 shrink-0 items-center justify-start">
                    <span class="material-symbols-outlined text-zinc-900 dark:text-white text-2xl"><a href="Pcontrol_finanzas.html">arrow_back_ios_new</a></span>
                </div>
                <h1 class="flex-1 text-center text-lg font-bold leading-tight tracking-[-0.015em] text-zinc-900 dark:text-white">Perfil y Configuración</h1>
                <div class="flex w-10 items-center justify-end">
                    <p class="shrink-0 text-base font-bold leading-normal tracking-[0.015em] text-primary">Guardar</p>
                </div>
            </header>
            <main class="flex flex-col gap-6 p-4 pt-6">
                <!-- Profile Header -->
                <section class="flex w-full flex-col items-center gap-4">
                    <div class="bg-center bg-no-repeat aspect-square bg-cover rounded-full h-28 w-28" data-alt="Abstract gradient profile picture" style="background-image: url('https://lh3.googleusercontent.com/aida-public/AB6AXuAPjHO63Rg0WJJYqu9U7Rw21JBthoWHhaGqxMCS1sAoNOs4s2mv_E-Id8sTncmcresi0T9OP7vLchY-QRjWL3iZ6ZlHAjKtTIp2adnt1XLO6rXpX5aTD-f2KxogkghLU5GUkqw2Ci2w6eGCOkRFAjT6a1ttSzctFKp1XkinqO_5PK-bX8Ho2WaNm5FiGUUnLvaWpA8moCqbdL9ZLHHFLvT-Fr8wZ_SRTzq7lFtES-cT-YZQ4Hl1MM5sMY7brtlFi0rhJ7xBXYq0cYNr');"></div>
                    <div class="flex flex-col items-center justify-center">
                        <p class="text-zinc-900 dark:text-white text-[22px] font-bold leading-tight tracking-[-0.015em] text-center">Alex Estudiante</p>
                        <p class="text-zinc-500 dark:text-zinc-400 text-base font-normal leading-normal text-center">alex.estudiante@email.com</p>
                    </div>
                    <button class="flex min-w-[84px] max-w-sm cursor-pointer items-center justify-center overflow-hidden rounded-full h-10 px-6 bg-primary/10 text-primary text-sm font-bold leading-normal tracking-[0.015em] w-full">
                        <span class="truncate">Cambiar foto</span>
                    </button>
                </section>
                <!-- Personal Information Section -->
                <section class="flex flex-col gap-2">
                    <h2 class="px-2 text-lg font-bold leading-tight tracking-[-0.015em] text-zinc-900 dark:text-white">Información Personal</h2>
                    <div class="flex flex-col overflow-hidden rounded-lg bg-white dark:bg-zinc-800/50">
                        <div class="flex cursor-pointer items-center justify-between gap-4 px-4 min-h-14 hover:bg-zinc-100 dark:hover:bg-zinc-800">
                            <div class="flex items-center gap-4">
                                <div class="flex size-10 shrink-0 items-center justify-center rounded-lg bg-zinc-200 dark:bg-zinc-700">
                                    <span class="material-symbols-outlined text-zinc-900 dark:text-white text-2xl">person</span>
                                </div>
                                <p class="flex-1 truncate text-base font-normal leading-normal text-zinc-900 dark:text-white">Editar Perfil</p>
                            </div>
                            <div class="shrink-0">
                                <span class="material-symbols-outlined text-zinc-400 dark:text-zinc-500">chevron_right</span>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Preferences Section -->
                <section class="flex flex-col gap-2">
                    <h2 class="px-2 text-lg font-bold leading-tight tracking-[-0.015em] text-zinc-900 dark:text-white">Preferencias</h2>
                    <div class="flex flex-col overflow-hidden rounded-lg bg-white dark:bg-zinc-800/50">
                        <div class="flex items-center justify-between gap-4 px-4 min-h-14">
                            <div class="flex items-center gap-4">
                                <div class="flex size-10 shrink-0 items-center justify-center rounded-lg bg-zinc-200 dark:bg-zinc-700">
                                    <span class="material-symbols-outlined text-zinc-900 dark:text-white text-2xl">notifications</span>
                                </div>
                                <p class="flex-1 truncate text-base font-normal leading-normal text-zinc-900 dark:text-white">Activar notificaciones</p>
                            </div>
                            <div class="shrink-0">
                                <label class="relative flex h-[31px] w-[51px] cursor-pointer items-center rounded-full border-none bg-zinc-200 p-0.5 has-[:checked]:bg-primary dark:bg-zinc-700">
                                    <div class="h-full w-[27px] rounded-full bg-white transition-transform duration-200 ease-in-out" style="box-shadow: rgba(0, 0, 0, 0.15) 0px 3px 8px, rgba(0, 0, 0, 0.06) 0px 3px 1px;"></div>
                                    <input checked="" class="invisible absolute" type="checkbox"/>
                                </label>
                            </div>
                        </div>
                        <div class="h-px w-full bg-zinc-200 dark:bg-zinc-700/50"></div>
                        <div class="flex cursor-pointer items-center justify-between gap-4 px-4 min-h-14 hover:bg-zinc-100 dark:hover:bg-zinc-800">
                            <div class="flex items-center gap-4">
                                <div class="flex size-10 shrink-0 items-center justify-center rounded-lg bg-zinc-200 dark:bg-zinc-700">
                                    <span class="material-symbols-outlined text-zinc-900 dark:text-white text-2xl">paid</span>
                                </div>
                                <p class="flex-1 truncate text-base font-normal leading-normal text-zinc-900 dark:text-white">Moneda</p>
                            </div>
                            <div class="flex shrink-0 items-center gap-2">
                                <p class="text-base font-normal leading-normal text-zinc-500 dark:text-zinc-400">USD</p>
                                <span class="material-symbols-outlined text-zinc-400 dark:text-zinc-500">chevron_right</span>
                            </div>
                        </div>
                        <div class="h-px w-full bg-zinc-200 dark:bg-zinc-700/50"></div>
                        <div class="flex items-center justify-between gap-4 px-4 min-h-14">
                            <div class="flex items-center gap-4">
                                <div class="flex size-10 shrink-0 items-center justify-center rounded-lg bg-zinc-200 dark:bg-zinc-700">
                                    <span class="material-symbols-outlined text-zinc-900 dark:text-white text-2xl">dark_mode</span>
                                </div>
                                <p class="flex-1 truncate text-base font-normal leading-normal text-zinc-900 dark:text-white">Modo Oscuro</p>
                            </div>
                            <div class="shrink-0">
                                <label class="relative flex h-[31px] w-[51px] cursor-pointer items-center rounded-full border-none bg-zinc-200 p-0.5 has-[:checked]:bg-primary dark:bg-zinc-700">
                                    <div class="h-full w-[27px] rounded-full bg-white transition-transform duration-200 ease-in-out" style="box-shadow: rgba(0, 0, 0, 0.15) 0px 3px 8px, rgba(0, 0, 0, 0.06) 0px 3px 1px;"></div>
                                    <input checked="" class="invisible absolute" type="checkbox"/>
                                </label>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Security Section -->
                <section class="flex flex-col gap-2">
                    <h2 class="px-2 text-lg font-bold leading-tight tracking-[-0.015em] text-zinc-900 dark:text-white">Seguridad</h2>
                    <div class="flex flex-col overflow-hidden rounded-lg bg-white dark:bg-zinc-800/50">
                        <div class="flex cursor-pointer items-center justify-between gap-4 px-4 min-h-14 hover:bg-zinc-100 dark:hover:bg-zinc-800">
                            <div class="flex items-center gap-4">
                                <div class="flex size-10 shrink-0 items-center justify-center rounded-lg bg-zinc-200 dark:bg-zinc-700">
                                    <span class="material-symbols-outlined text-zinc-900 dark:text-white text-2xl">password</span>
                                </div>
                                <p class="flex-1 truncate text-base font-normal leading-normal text-zinc-900 dark:text-white">Cambiar Contraseña</p>
                            </div>
                            <div class="shrink-0">
                                <span class="material-symbols-outlined text-zinc-400 dark:text-zinc-500">chevron_right</span>
                            </div>
                        </div>
                        <div class="h-px w-full bg-zinc-200 dark:bg-zinc-700/50"></div>
                        <div class="flex items-center justify-between gap-4 px-4 min-h-14">
                            <div class="flex items-center gap-4">
                                <div class="flex size-10 shrink-0 items-center justify-center rounded-lg bg-zinc-200 dark:bg-zinc-700">
                                    <span class="material-symbols-outlined text-zinc-900 dark:text-white text-2xl">face</span>
                                </div>
                                <p class="flex-1 truncate text-base font-normal leading-normal text-zinc-900 dark:text-white">Activar Face ID</p>
                            </div>
                            <div class="shrink-0">
                                <label class="relative flex h-[31px] w-[51px] cursor-pointer items-center rounded-full border-none bg-zinc-200 p-0.5 has-[:checked]:bg-primary dark:bg-zinc-700">
                                    <div class="h-full w-[27px] rounded-full bg-white transition-transform duration-200 ease-in-out" style="box-shadow: rgba(0, 0, 0, 0.15) 0px 3px 8px, rgba(0, 0, 0, 0.06) 0px 3px 1px;"></div>
                                    <input class="invisible absolute" type="checkbox"/>
                                </label>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Actions -->
                <section class="flex flex-col gap-4 pt-4">
                    <button class="flex min-w-[84px] cursor-pointer items-center justify-center overflow-hidden rounded-full h-12 px-6 bg-red-500/10 text-red-500 text-base font-bold leading-normal w-full">
                        <span class="truncate"><a href="inicio_sesion.html">Cerrar Sesión</a></span>
                    </button>
                    <div class="flex flex-col items-center justify-center gap-1 pb-8">
                        <p class="text-sm font-normal text-zinc-500 dark:text-zinc-400">Ayuda y Soporte</p>
                        <p class="text-sm font-normal text-zinc-500 dark:text-zinc-400">Política de Privacidad</p>
                    </div>
                </section>
            </main>
        </div>
    </body></html>