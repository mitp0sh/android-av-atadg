.class Lde/gdata/mobilesecurity/fragments/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/aa;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/aa;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/aa;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/fragments/AccountManagementPlasmaFragment;->prepareAndSendPurchaseData(Ljava/lang/String;)V

    .line 550
    return-void
.end method
