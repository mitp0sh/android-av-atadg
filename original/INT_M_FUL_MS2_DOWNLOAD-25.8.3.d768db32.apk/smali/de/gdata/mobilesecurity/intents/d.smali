.class Lde/gdata/mobilesecurity/intents/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/BusinessPreferences;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/d;->a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/d;->a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/d;->a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/d;->a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/d;->a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/d;->a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/d;->a:Lde/gdata/mobilesecurity/intents/BusinessPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/BusinessPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSName(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method
