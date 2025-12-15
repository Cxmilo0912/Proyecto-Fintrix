<!DOCTYPE html>

<html class="dark" lang="es"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <title>Panel de control de finanzas</title>
        <link href="https://fonts.googleapis.com" rel="preconnect"/>
        <link crossorigin="" href="https://fonts.gstatic.com" rel="preconnect"/>
        <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet"/>
        <link rel="stylesheet" href="style.css" type="text/css">

        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <style type="text/tailwindcss">
            .material-symbols-outlined {
                font-variation-settings:
                    'FILL' 0,
                    'wght' 400,
                    'GRAD' 0,
                    'opsz' 24
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
                        borderRadius: {"DEFAULT": "1rem", "lg": "1.5rem", "xl": "2rem", "full": "9999px"},
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
        <div class="relative flex h-auto min-h-screen w-full flex-col overflow-x-hidden">
            <div class="flex flex-col flex-1 pb-24">
                <!-- TopAppBar -->
                <div class="flex items-center bg-background-light dark:bg-background-dark p-4 pb-2 justify-between sticky top-0 z-10">
                    <div class="flex size-12 shrink-0 items-center justify-start">
                        <button class="flex items-center justify-center rounded-full h-10 w-10 text-slate-800 dark:text-white">
                            <span class="material-symbols-outlined text-2xl"><a href="configuracion.html">person</a></span>
                        </button>
                    </div>
                    <h2 class="text-slate-900 dark:text-white text-lg font-bold leading-tight tracking-[-0.015em] flex-1 text-center">Resumen</h2>
                    <div class="flex w-12 items-center justify-end">
                        <button class="flex max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-full h-12 bg-transparent text-slate-800 dark:text-white gap-2 text-base font-bold leading-normal tracking-[0.015em] min-w-0 p-0">
                            <span class="material-symbols-outlined text-2xl"><a href="notificaciones.html">notifications</a></span>
                        </button>
                    </div>
                </div>
                <!-- BodyText -->
                <p class="text-slate-500 dark:text-slate-400 text-base font-normal leading-normal pb-0 pt-4 px-4">Saldo Actual</p>
                <!-- HeadlineText -->
                <h1 class="text-slate-900 dark:text-white tracking-tight text-[32px] font-bold leading-tight px-4 text-left pb-3 pt-1">$1,250.75</h1>
                <!-- ButtonGroup -->
                <div class="flex justify-stretch">
                    <div class="flex flex-1 gap-3 flex-wrap px-4 py-3 justify-start">
                        <button class="flex flex-1 min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-full h-12 px-4 bg-primary text-white text-sm font-bold leading-normal tracking-[0.015em] gap-2">
                            <span class="material-symbols-outlined text-xl">remove</span>
                            <span class="truncate"><a href="registro_transaccion.html">Añadir Gasto</a></span>
                        </button>
                        <button class="flex flex-1 min-w-[84px] max-w-[480px] cursor-pointer items-center justify-center overflow-hidden rounded-full h-12 px-4 bg-primary/20 text-primary text-sm font-bold leading-normal tracking-[0.015em] gap-2">
                            <span class="material-symbols-outlined text-xl">add</span>
                            <span class="truncate"><a href="regitroT_ingreso.html">Añadir Ingreso</a></span>
                        </button>
                    </div>
                </div>
                <!-- Stats -->
                <div class="flex flex-wrap gap-4 p-4">
                    <div class="flex min-w-[158px] flex-1 flex-col gap-2 rounded-lg bg-white dark:bg-slate-800/50 p-6 shadow-sm">
                        <p class="text-slate-500 dark:text-slate-400 text-base font-medium leading-normal">Ingresos del Mes</p>
                        <p class="text-green-500 dark:text-green-400 tracking-light text-2xl font-bold leading-tight">+$800.00</p>
                    </div>
                    <div class="flex min-w-[158px] flex-1 flex-col gap-2 rounded-lg bg-white dark:bg-slate-800/50 p-6 shadow-sm">
                        <p class="text-slate-500 dark:text-slate-400 text-base font-medium leading-normal">Gastos del Mes</p>
                        <p class="text-red-500 dark:text-red-400 tracking-light text-2xl font-bold leading-tight">-$450.50</p>
                    </div>
                </div>
                <!-- Donut Chart Card -->
                <div class="flex flex-col gap-4 p-4">
                    <h3 class="text-slate-900 dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">Gastos por Categoría</h3>
                    <div class="flex flex-col items-center justify-center rounded-lg bg-white dark:bg-slate-800/50 p-6 gap-6 shadow-sm">
                        <div class="relative w-40 h-40">
                            <svg class="w-full h-full" viewbox="0 0 36 36">
                            <path class="stroke-current text-blue-500" d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" fill="none" stroke-dasharray="60, 100" stroke-width="4"></path>
                            <path class="stroke-current text-purple-500" d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" fill="none" stroke-dasharray="25, 100" stroke-dashoffset="-60" stroke-width="4"></path>
                            <path class="stroke-current text-yellow-500" d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831" fill="none" stroke-dasharray="15, 100" stroke-dashoffset="-85" stroke-width="4"></path>
                            </svg>
                            <div class="absolute inset-0 flex flex-col items-center justify-center">
                                <span class="text-slate-500 dark:text-slate-400 text-sm">Total Gastado</span>
                                <span class="text-slate-900 dark:text-white text-xl font-bold">$450.50</span>
                            </div>
                        </div>
                        <div class="w-full flex flex-col gap-3">
                            <div class="flex items-center justify-between text-sm">
                                <div class="flex items-center gap-2">
                                    <span class="w-3 h-3 rounded-full bg-blue-500"></span>
                                    <span class="text-slate-600 dark:text-slate-300">Comida</span>
                                </div>
                                <span class="font-bold text-slate-800 dark:text-slate-100">$270.30</span>
                            </div>
                            <div class="flex items-center justify-between text-sm">
                                <div class="flex items-center gap-2">
                                    <span class="w-3 h-3 rounded-full bg-purple-500"></span>
                                    <span class="text-slate-600 dark:text-slate-300">Transporte</span>
                                </div>
                                <span class="font-bold text-slate-800 dark:text-slate-100">$112.62</span>
                            </div>
                            <div class="flex items-center justify-between text-sm">
                                <div class="flex items-center gap-2">
                                    <span class="w-3 h-3 rounded-full bg-yellow-500"></span>
                                    <span class="text-slate-600 dark:text-slate-300">Ocio</span>
                                </div>
                                <span class="font-bold text-slate-800 dark:text-slate-100">$67.58</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Recent Transactions List -->
                <div class="flex flex-col gap-4 p-4">
                    <div class="flex items-center justify-between">
                        <h3 class="text-slate-900 dark:text-white text-lg font-bold leading-tight tracking-[-0.015em]">Movimientos Recientes</h3>
                        <a class="text-primary text-sm font-bold" href="#">Ver todo</a>
                    </div>
                    <div class="flex flex-col gap-3">
                        <div class="flex items-center justify-between rounded-lg bg-white dark:bg-slate-800/50 p-4 shadow-sm">
                            <div class="flex items-center gap-4">
                                <div class="flex h-12 w-12 items-center justify-center rounded-full bg-primary/20 text-primary">
                                    <span class="material-symbols-outlined">restaurant</span>
                                </div>
                                <div>
                                    <p class="font-bold text-slate-800 dark:text-white">Café en la cafetería</p>
                                    <p class="text-sm text-slate-500 dark:text-slate-400">Hoy</p>
                                </div>
                            </div>
                            <p class="font-bold text-red-500 dark:text-red-400">-$3.50</p>
                        </div>
                        <div class="flex items-center justify-between rounded-lg bg-white dark:bg-slate-800/50 p-4 shadow-sm">
                            <div class="flex items-center gap-4">
                                <div class="flex h-12 w-12 items-center justify-center rounded-full bg-green-500/20 text-green-500">
                                    <span class="material-symbols-outlined">payments</span>
                                </div>
                                <div>
                                    <p class="font-bold text-slate-800 dark:text-white">Beca Mensual</p>
                                    <p class="text-sm text-slate-500 dark:text-slate-400">Ayer</p>
                                </div>
                            </div>
                            <p class="font-bold text-green-500 dark:text-green-400">+$500.00</p>
                        </div>
                        <div class="flex items-center justify-between rounded-lg bg-white dark:bg-slate-800/50 p-4 shadow-sm">
                            <div class="flex items-center gap-4">
                                <div class="flex h-12 w-12 items-center justify-center rounded-full bg-primary/20 text-primary">
                                    <span class="material-symbols-outlined">train</span>
                                </div>
                                <div>
                                    <p class="font-bold text-slate-800 dark:text-white">Boleto de metro</p>
                                    <p class="text-sm text-slate-500 dark:text-slate-400">2 Días</p>
                                </div>
                            </div>
                            <p class="font-bold text-red-500 dark:text-red-400">-$2.75</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Bottom Navigation Bar -->
            <div class="fixed bottom-0 left-0 right-0 h-20 bg-white/80 dark:bg-background-dark/80 backdrop-blur-lg border-t border-slate-200 dark:border-slate-800">
                <div class="flex justify-around items-center h-full max-w-lg mx-auto">
                    <button class="flex flex-col items-center justify-center text-primary w-16">
                        <span class="material-symbols-outlined text-3xl">dashboard</span>
                        <span class="text-xs font-bold">Resumen</span>
                    </button>
                    <button class="flex flex-col items-center justify-center text-slate-400 dark:text-slate-500 w-16">
                        <span class="material-symbols-outlined text-3xl">receipt_long</span>
                        <span class="text-xs font-bold">Movimientos</span>
                    </button>
                    <button class="flex flex-col items-center justify-center text-slate-400 dark:text-slate-500 w-16">
                        <span class="material-symbols-outlined text-3xl">pie_chart</span>
                        <span class="text-xs font-bold">Análisis</span>
                    </button>
                    <button class="flex flex-col items-center justify-center text-slate-400 dark:text-slate-500 w-16">
                        <span class="material-symbols-outlined text-3xl">account_balance_wallet</span>
                        <span class="text-xs font-bold">Cuentas</span>
                    </button>
                </div>
            </div>
        </div>
    </body></html>