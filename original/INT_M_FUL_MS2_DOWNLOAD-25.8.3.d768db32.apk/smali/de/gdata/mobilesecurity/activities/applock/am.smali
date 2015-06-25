.class Lde/gdata/mobilesecurity/activities/applock/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/am;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/am;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->resetValues()V

    .line 563
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/am;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->e(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    .line 564
    invoke-static {}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->closeDialog()V

    .line 565
    return-void
.end method
