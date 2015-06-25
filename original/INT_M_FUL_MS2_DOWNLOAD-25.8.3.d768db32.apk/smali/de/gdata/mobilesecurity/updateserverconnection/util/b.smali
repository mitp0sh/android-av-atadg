.class Lde/gdata/mobilesecurity/updateserverconnection/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->a:Landroid/app/Activity;

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->a:Landroid/app/Activity;

    .line 444
    iput-object p2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->b:Ljava/lang/String;

    .line 445
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 448
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 450
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 456
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->a:Landroid/app/Activity;

    instance-of v0, v0, Lde/gdata/mobilesecurity/intents/Main;

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/b;->a:Landroid/app/Activity;

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
