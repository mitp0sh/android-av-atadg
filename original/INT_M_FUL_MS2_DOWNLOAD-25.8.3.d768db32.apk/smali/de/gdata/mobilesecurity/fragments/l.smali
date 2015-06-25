.class Lde/gdata/mobilesecurity/fragments/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/l;->a:Lde/gdata/mobilesecurity/fragments/AccountManagementIPXConfirmFragment$NotConnectedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    return-void
.end method
