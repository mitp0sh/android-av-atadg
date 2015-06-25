.class public Lde/gdata/mobilesecurity/activities/kidsguard/KidsPreferences;
.super Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;
.source "SourceFile"


# instance fields
.field a:Landroid/app/Activity;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    iput-object p0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsPreferences;->a:Landroid/app/Activity;

    .line 23
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 25
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsPreferences;->addPreferencesFromResource(I)V

    .line 26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 32
    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsPreferences;->finish()V

    .line 35
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lde/gdata/mobilesecurity/intents/GdPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
