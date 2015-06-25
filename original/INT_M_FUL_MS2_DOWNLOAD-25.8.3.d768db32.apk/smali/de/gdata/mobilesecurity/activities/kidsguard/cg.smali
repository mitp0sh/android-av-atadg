.class Lde/gdata/mobilesecurity/activities/kidsguard/cg;
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
    .line 140
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cg;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 143
    check-cast p2, Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/cg;->a:Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;

    invoke-static {v0, p2}, Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;->b(Lde/gdata/mobilesecurity/activities/kidsguard/UsageControlPreferences;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
