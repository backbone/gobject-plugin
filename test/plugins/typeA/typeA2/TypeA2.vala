using GObject.Plugins;

/**
 * Plugin of type A2.
 */
public class TypeA2 : PluginTypeA {

	/**
	 * Constructs a new ``TypeA2``.
	 */
	construct {
		stdout.puts ("TypeA2 init\n");
	}

	/**
	 * Destroys the ``TypeA2``.
	 */
	~Test () {
		stdout.puts ("TypeA2 deinit\n");
	}

	/**
	 * Any virtual method for PluginTypeA.
	 */
	public override void method_a () {
		stdout.puts ("TypeA2.method_a () called\n");
	}
}

[ModuleInit]
Type plugin_init (GLib.TypeModule type_module) {
	return typeof (TypeA2);
}
