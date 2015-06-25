.class Lde/gdata/mobilesecurity/intents/bk;
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
    .line 216
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/bk;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/bk;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    iget-object v0, v0, Lde/gdata/mobilesecurity/intents/Preferences;->a:Landroid/app/Activity;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Preferences;->showLicenseDialog(Landroid/app/Activity;)V

    .line 221
    const/4 v0, 0x1

    return v0
.end method
