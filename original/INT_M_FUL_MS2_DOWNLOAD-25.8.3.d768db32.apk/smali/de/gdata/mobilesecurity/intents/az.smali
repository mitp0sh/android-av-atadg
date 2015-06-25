.class Lde/gdata/mobilesecurity/intents/az;
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
    .line 394
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/az;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 397
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/az;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->clearExceptions(Landroid/content/Context;)V

    .line 398
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/az;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/az;->a:Lde/gdata/mobilesecurity/intents/Preferences;

    const v2, 0x7f0d0170

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/intents/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 401
    return v3
.end method
