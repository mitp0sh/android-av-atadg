.class Lde/gdata/mobilesecurity/activities/kidsguard/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cd;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cd;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cd;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->c(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;Z)V

    .line 104
    return v1

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
