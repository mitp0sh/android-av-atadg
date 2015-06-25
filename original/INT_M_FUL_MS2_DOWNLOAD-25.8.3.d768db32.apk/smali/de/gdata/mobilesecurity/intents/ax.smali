.class Lde/gdata/mobilesecurity/intents/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Preferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Preferences;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ax;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/ax;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/intents/Preferences;->showWifiDialog(Landroid/app/Activity;Landroid/preference/Preference;)V

    .line 379
    const/4 v0, 0x1

    return v0
.end method
