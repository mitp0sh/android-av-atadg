.class Lde/gdata/mobilesecurity/activities/kidsguard/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallUsageTimeLimited(Z)V

    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setKidsguardOverallAllowedUsageTimeLimit(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    const v2, 0x7f0d02f6

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bz;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->a:Landroid/app/Activity;

    const v1, 0x7f0d02ed

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
