bsptest("coremark")
  add_files("thrash.cc")
    add_includedirs("./coremark", "./coremark/barebones")
    add_files("coremark/core_main.c",
              "coremark/core_list_join.c",
              "coremark/core_matrix.c",
              "coremark/core_state.c",
              "coremark/core_util.c",
              "coremark/barebones/core_portme.c")
    add_defines("ITERATIONS=1", "MEM_METHOD=MEM_STATIC", "MEM_LOCATION=\"STATIC\"", "PERFORMANCE_RUN=1", "ICENI_DISABLE_ECC=1")
    add_deps("stdio", "freestanding")
