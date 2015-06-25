.class Lde/gdata/mobilesecurity/activities/usagecontrol/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/y;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/usagecontrol/y;->a:Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/usagecontrol/NewLockedLocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 149
    return-void
.end method
