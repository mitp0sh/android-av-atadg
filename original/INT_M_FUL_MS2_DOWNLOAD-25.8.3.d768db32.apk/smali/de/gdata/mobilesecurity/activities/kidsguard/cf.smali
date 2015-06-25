.class Lde/gdata/mobilesecurity/activities/kidsguard/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cf;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cf;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->resetOverallUsageTime()V

    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cf;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->d(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)Landroid/preference/EditTextPreference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method
