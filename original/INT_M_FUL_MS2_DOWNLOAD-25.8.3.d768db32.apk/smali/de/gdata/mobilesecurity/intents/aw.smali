.class Lde/gdata/mobilesecurity/intents/aw;
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
    .line 364
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/aw;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/aw;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Preferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->sendArpLog(Landroid/content/Context;)V

    .line 369
    const/4 v0, 0x1

    return v0
.end method
