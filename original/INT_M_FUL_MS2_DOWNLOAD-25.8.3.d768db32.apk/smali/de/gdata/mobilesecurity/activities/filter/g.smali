.class Lde/gdata/mobilesecurity/activities/filter/g;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;Landroid/app/Activity;Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/g;->c:Lde/gdata/mobilesecurity/activities/filter/FilterListFragment;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 724
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/g;->a:Landroid/content/Context;

    .line 725
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/filter/g;->b:Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 727
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 731
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 732
    const v1, 0x7f0d0270

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 733
    const v1, 0x7f0d026e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 735
    const v1, 0x7f0d021e

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/h;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/h;-><init>(Lde/gdata/mobilesecurity/activities/filter/g;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 747
    const v1, 0x7f0d026f

    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/i;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/filter/i;-><init>(Lde/gdata/mobilesecurity/activities/filter/g;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
