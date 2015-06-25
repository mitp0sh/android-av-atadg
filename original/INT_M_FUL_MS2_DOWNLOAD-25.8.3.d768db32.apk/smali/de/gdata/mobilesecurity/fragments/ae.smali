.class Lde/gdata/mobilesecurity/fragments/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/DialogFragment;

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;Landroid/support/v4/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ae;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementRedFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/ae;->a:Landroid/support/v4/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ae;->a:Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ae;->a:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method
