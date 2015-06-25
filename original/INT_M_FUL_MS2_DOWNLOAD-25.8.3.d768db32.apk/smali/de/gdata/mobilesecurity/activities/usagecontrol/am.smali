.class Lde/gdata/mobilesecurity/activities/usagecontrol/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/am;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/am;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment$MyHomeDialogFragment;->b:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->configurateLockscreen()V

    .line 577
    return-void
.end method
