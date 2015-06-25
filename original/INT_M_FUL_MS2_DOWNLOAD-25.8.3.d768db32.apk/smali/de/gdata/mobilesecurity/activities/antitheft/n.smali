.class Lde/gdata/mobilesecurity/activities/antitheft/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/m;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/m;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/n;->a:Lde/gdata/mobilesecurity/activities/antitheft/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/n;->a:Lde/gdata/mobilesecurity/activities/antitheft/m;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/services/SimChangeService;->triggerSimUpdateAction(Landroid/content/Context;)V

    .line 366
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/n;->a:Lde/gdata/mobilesecurity/activities/antitheft/m;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/antitheft/m;->a:Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;->k(Lde/gdata/mobilesecurity/activities/antitheft/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d00e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    return-void
.end method
