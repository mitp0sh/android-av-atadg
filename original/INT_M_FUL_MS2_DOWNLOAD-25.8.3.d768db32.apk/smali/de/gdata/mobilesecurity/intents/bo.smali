.class Lde/gdata/mobilesecurity/intents/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/Preferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Preferences;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bo;->b:Lde/gdata/mobilesecurity/intents/Preferences;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/bo;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bo;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bo;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSServer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bo;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getMMSPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bo;->b:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-static {v0}, Lde/gdata/mobilesecurity/mms/ManagementServerService;->scheduleUpdate(Landroid/content/Context;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bo;->a:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSPassword(Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method