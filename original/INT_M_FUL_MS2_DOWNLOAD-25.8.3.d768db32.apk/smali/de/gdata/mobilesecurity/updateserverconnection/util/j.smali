.class final Lde/gdata/mobilesecurity/updateserverconnection/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/DialogFragment;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;->a:Landroid/support/v4/app/DialogFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;->b:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;->a:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;->a:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 146
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/j;->c:Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;-><init>(Landroid/app/Activity;Lde/gdata/mobilesecurity/updateserverconnection/conn/ServerStatusListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method
