.class Lde/gdata/mobilesecurity/updateserverconnection/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/b;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/b;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskConfirmComputerIdChanged;->cancel(Z)Z

    .line 49
    return-void
.end method
