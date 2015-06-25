.class Lde/gdata/mobilesecurity/updateserverconnection/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/d;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/d;->a:Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskTestAuthData;->cancel(Z)Z

    .line 61
    return-void
.end method
