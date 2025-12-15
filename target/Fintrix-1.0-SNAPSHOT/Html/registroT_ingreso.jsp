<!DOCTYPE html>
<html class="dark" lang="es"><head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <title>Registro de Transacciones - Ingreso</title>
        <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
        <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&amp;display=swap" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet"/>
        <style>
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
                            "primary": "#34C759",
                            "background-light": "#F2F2F7",
                            "background-dark": "#101922",
                        },
                        fontFamily: {
                            "display": ["Manrope", "sans-serif"]
                        },
                        borderRadius: {
                            "DEFAULT": "1rem",
                            "lg": "2rem",
                            "xl": "3rem",
                            "full": "9999px"
                        },
                    },
                },
            }
        </script>
        <style>
            body {
                min-height: max(884px, 100dvh);
            }
        </style>
        <style>
            body {
                min-height: max(884px, 100dvh);
            }
        </style>
    </head>
    <body class="bg-background-light dark:bg-background-dark font-display">
        <div class="relative flex h-auto min-h-screen w-full flex-col">
            <header class="flex items-center p-4 pb-2 justify-between sticky top-0 z-10 bg-background-light dark:bg-background-dark">
                <div class="flex size-10 shrink-0 items-center justify-center">
                    <span class="material-symbols-outlined text-gray-800 dark:text-gray-200"><a href="Pcontrol_finanzas.html">close</a></span>
                </div>
                <h1 class="text-gray-900 dark:text-white text-lg font-bold leading-tight tracking-[-0.015em] flex-1 text-center">Nuevo Ingreso</h1>
                <div class="flex size-10 shrink-0 items-center justify-center"></div>
            </header>
            <main class="flex-1 px-4 py-2">
                <div class="flex py-3">
                    <div class="flex h-12 flex-1 items-center justify-center rounded-xl bg-gray-200 dark:bg-gray-800 p-1">
                        <label class="group flex cursor-pointer h-full grow items-center justify-center overflow-hidden rounded-lg px-2 has-[:checked]:bg-white has-[:checked]:dark:bg-black has-[:checked]:shadow-md">
                            <span class="truncate text-red-500 font-bold text-base leading-normal"><a href="registro_transaccion.html">Gasto</a></span>
                            <input class="sr-only" name="transaction_type" type="radio" value="Gasto"/>
                        </label>
                        <label class="group flex cursor-pointer h-full grow items-center justify-center overflow-hidden rounded-lg px-2 has-[:checked]:bg-white has-[:checked]:dark:bg-black has-[:checked]:shadow-md">
                            <span class="truncate text-green-500 font-bold text-base leading-normal">Ingreso</span>
                            <input checked="" class="sr-only" name="transaction_type" type="radio" value="Ingreso"/>
                        </label>
                    </div>
                </div>
                <div class="flex max-w-[480px] flex-wrap items-end gap-4 py-3">
                    <label class="flex flex-col min-w-40 flex-1">
                        <p class="text-gray-800 dark:text-white text-base font-medium leading-normal pb-2">Monto</p>
                        <input class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-gray-900 dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border-none bg-gray-200 dark:bg-gray-800 h-14 placeholder:text-gray-500 dark:placeholder:text-gray-400 p-4 text-base font-normal leading-normal" placeholder="?0.00" type="number" value=""/>
                    </label>
                </div>
                <div class="flex max-w-[480px] flex-wrap items-end gap-4 py-3">
                    <label class="flex flex-col min-w-40 flex-1">
                        <p class="text-gray-800 dark:text-white text-base font-medium leading-normal pb-2">Descripción</p>
                        <input class="form-input flex w-full min-w-0 flex-1 resize-none overflow-hidden rounded-xl text-gray-900 dark:text-white focus:outline-0 focus:ring-2 focus:ring-primary border-none bg-gray-200 dark:bg-gray-800 h-14 placeholder:text-gray-500 dark:placeholder:text-gray-400 p-4 text-base font-normal leading-normal" placeholder="Beca de estudios" value=""/>
                    </label>
                </div>
                <div class="mt-4 flex flex-col divide-y divide-gray-200 dark:divide-gray-700 overflow-hidden rounded-xl bg-gray-200 dark:bg-gray-800">
                    <div class="flex cursor-pointer items-center gap-4 p-4 min-h-14 justify-between hover:bg-gray-300 dark:hover:bg-gray-700">
                        <div class="flex items-center gap-4">
                            <div class="text-gray-900 dark:text-white flex items-center justify-center rounded-lg shrink-0 size-10">
                                <span class="material-symbols-outlined">category</span>
                            </div>
                            <p class="text-gray-900 dark:text-white text-base font-normal leading-normal flex-1 truncate">Categoría</p>
                        </div>
                        <div class="flex items-center gap-2">
                            <p class="text-gray-500 dark:text-gray-400 text-base">Salario</p>
                            <div class="shrink-0">
                                <div class="text-gray-500 dark:text-gray-400 flex size-7 items-center justify-center">
                                    <span class="material-symbols-outlined">chevron_right</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="flex cursor-pointer items-center gap-4 p-4 min-h-14 justify-between hover:bg-gray-300 dark:hover:bg-gray-700">
                        <div class="flex items-center gap-4">
                            <div class="text-gray-900 dark:text-white flex items-center justify-center rounded-lg shrink-0 size-10">
                                <span class="material-symbols-outlined">calendar_month</span>
                            </div>
                            <p class="text-gray-900 dark:text-white text-base font-normal leading-normal flex-1 truncate">Fecha</p>
                        </div>
                        <div class="flex items-center gap-2">
                            <p class="text-gray-500 dark:text-gray-400 text-base">Hoy</p>
                            <div class="shrink-0">
                                <div class="text-gray-500 dark:text-gray-400 flex size-7 items-center justify-center">
                                    <span class="material-symbols-outlined">chevron_right</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <footer class="p-4 pt-8 sticky bottom-0 z-10 bg-background-light dark:bg-background-dark">
                <button class="flex w-full items-center justify-center rounded-xl bg-primary h-14 text-white text-lg font-bold leading-normal shadow-lg shadow-primary/30 hover:bg-primary/90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary focus:ring-offset-background-light dark:focus:ring-offset-background-dark">
                    Guardar Ingreso
                </button>
            </footer>
        </div>

    </body></html>