.class Lde/gdata/webportal/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/webportal/android/RegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/webportal/android/RegisterFragment;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lde/gdata/webportal/android/a;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/gdata/webportal/android/a;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-virtual {v1}, Lde/gdata/webportal/android/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lde/gdata/webportal/android/ScannerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object v1, p0, Lde/gdata/webportal/android/a;->a:Lde/gdata/webportal/android/RegisterFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lde/gdata/webportal/android/RegisterFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
