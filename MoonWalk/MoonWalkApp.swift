import SwiftUI

@main
struct MoonWalkApp: App {
    var body: some Scene {
        MenuBarExtra("MoonWalk", systemImage: "figure.walk") {
            Button("Moonwalk Now") {
                // TODO: Trigger moonwalk animation
            }
            .keyboardShortcut("m", modifiers: [.command, .shift])

            Divider()

            Button("Preferences...") {
                // TODO: Open preferences window
            }
            .keyboardShortcut(",", modifiers: .command)

            Divider()

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }
            .keyboardShortcut("q", modifiers: .command)
        }
    }
}
