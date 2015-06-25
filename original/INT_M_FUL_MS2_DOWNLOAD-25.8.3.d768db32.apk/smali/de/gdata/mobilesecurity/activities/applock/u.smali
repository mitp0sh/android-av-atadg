.class Lde/gdata/mobilesecurity/activities/applock/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/u;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/u;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->showDialog(I)V

    .line 174
    return-void
.end method
