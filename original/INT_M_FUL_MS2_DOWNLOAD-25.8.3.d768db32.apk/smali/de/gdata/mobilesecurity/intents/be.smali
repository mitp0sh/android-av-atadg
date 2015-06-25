.class final Lde/gdata/mobilesecurity/intents/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;


# direct methods
.method constructor <init>(Landroid/preference/Preference;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/be;->a:Landroid/preference/Preference;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/be;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/be;->a:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/be;->a:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 650
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/be;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSpoofDetectionActivated(Ljava/lang/Boolean;)V

    .line 652
    invoke-static {}, Lde/gdata/mobilesecurity/services/WatcherService;->stopSpoofChecker()V

    .line 654
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 655
    return-void
.end method
