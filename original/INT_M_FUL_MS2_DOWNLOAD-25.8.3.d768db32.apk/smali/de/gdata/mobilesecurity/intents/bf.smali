.class Lde/gdata/mobilesecurity/intents/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Preferences;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Preferences;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bf;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bf;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/Preferences;->a:Landroid/app/Activity;

    const-class v1, Lde/gdata/mobilesecurity/intents/ScanPreferences;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const/4 v0, 0x0

    return v0
.end method
