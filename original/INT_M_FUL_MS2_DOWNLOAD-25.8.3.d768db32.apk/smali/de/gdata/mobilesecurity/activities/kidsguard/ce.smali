.class Lde/gdata/mobilesecurity/activities/kidsguard/ce;
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
    .line 110
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ce;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 113
    check-cast p2, Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ce;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-static {v0, p2}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->a(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
