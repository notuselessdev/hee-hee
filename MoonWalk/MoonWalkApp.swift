import SwiftUI

@main
struct MoonWalkApp: App {
    @ObservedObject private var animator = MoonwalkAnimator.shared

    init() {
        MoonwalkTimer.shared.start()
    }

    var body: some Scene {
        MenuBarExtra("MoonWalk", systemImage: "figure.walk") {
            Button("Moonwalk Now") {
                MoonwalkTimer.shared.reset()
                MoonwalkAnimator.shared.startMoonwalk()
            }
            .disabled(animator.isAnimating)
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
