.class Lde/gdata/mobilesecurity/updateserverconnection/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/c;->a:Landroid/app/Activity;

    .line 418
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/c;->b:Ljava/lang/Class;

    .line 420
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 423
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/c;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 426
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 428
    return-void
.end method
