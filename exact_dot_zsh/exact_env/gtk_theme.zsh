# Set GTK_THEME for GTK 4
if [[ -v DESKTOP_SESSION && -f "${XDG_CONFIG_HOME}/gtk-4.0/settings.ini" ]]; then
    case "$(awk -F= '/gtk-theme-name/{ print $2 }' "${XDG_CONFIG_HOME}/gtk-4.0/settings.ini")" in
        Arc-Dark)
            export GTK_THEME="Arc:dark"
            ;;
    esac
fi
