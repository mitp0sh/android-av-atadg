.class Lde/gdata/mobilesecurity/fragments/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/w;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/w;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lde/gdata/mobilesecurity/fragments/w;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 439
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/w;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/fragments/AccountManagementInAppFragment;->startActivity(Landroid/content/Intent;)V

    .line 440
    return-void
.end method
