.class Lde/gdata/mobilesecurity/intents/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/Preferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Preferences;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/av;->b:Lde/gdata/mobilesecurity/intents/Preferences;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/av;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 351
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/av;->b:Lde/gdata/mobilesecurity/intents/Preferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/av;->a:Landroid/preference/Preference;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/intents/Preferences;->showWifiDialog(Landroid/app/Activity;Landroid/preference/Preference;)V

    .line 354
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/av;->b:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->startSpoofChecker(Landroid/content/Context;)V

    .line 359
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_0
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->stopSpoofChecker()V

    goto :goto_0
.end method
