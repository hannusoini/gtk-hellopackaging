
/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2021 Your Name <you@email.com>
 */
 
 public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.hannusoini.gtk-helloagain",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
    
    
    var label = new Gtk.Label ("Hello Again World!");
    var button_hello = new Gtk.Button.with_label ("Click me!") {
    margin = 12
};

button_hello.clicked.connect (() => {
    button_hello.label = _("Hello World!");
    button_hello.sensitive = false;
});

        var main_window = new Gtk.ApplicationWindow (this) {
            default_height =1000,
            default_width = 1000,
            title = _("Hello World")
        };
        
main_window.add (button_hello);
//main_window.add (label);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
    

}
