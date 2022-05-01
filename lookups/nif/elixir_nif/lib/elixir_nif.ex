defmodule ElixirNif do
    # Tels the VM to execute the load_nif/0 function
    # It's called as soon the VM loads the ElixirNif module into memory
    # Happening at compile time and also the first time the VM references ElixirNif on startup
    @on_load :load_nif

    # Will look for an .so or .dll on priv/elixir_nif
    # Ok -> module loaded =D
    def load_nif do
        nif = Application.app_dir(:elixir_nif, "priv/elixir_nif")
        :ok = :erlang.load_nif(String.to_charlist(nif), 0)
    end

    # The C code will be replace this function
    # Here we can see a default implementation, that will called only if the C implementation it's not available
    def my_custom_nif do
        raise "Custom NIF could not be loaded"
    end

end
