.class Lde/gdata/mobilesecurity/activities/kidsguard/ca;
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
    .line 86
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ca;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ca;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->resetOverallUsageTime()V

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ca;->a:Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/ParentsPreferences;->a:Landroid/app/Activity;

    const v1, 0x7f0d02f0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
