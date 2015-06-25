.class Lde/gdata/mobilesecurity/activities/kidsguard/cb;
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
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cb;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cb;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cb;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a:Landroid/app/Activity;

    const-class v1, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlWeeklySchedulePref;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
