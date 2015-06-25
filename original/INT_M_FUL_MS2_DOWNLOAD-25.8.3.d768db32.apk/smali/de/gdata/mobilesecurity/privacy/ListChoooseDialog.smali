.class public Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;

.field private b:[Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->b:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->b:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getResultListener()Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->a:Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->b:[Ljava/lang/String;

    new-instance v2, Lde/gdata/mobilesecurity/privacy/w;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/privacy/w;-><init>(Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->getResultListener()Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->getResultListener()Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;->onItemSelected(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method

.method public setResultListener(Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ListChoooseDialog;->a:Lde/gdata/mobilesecurity/privacy/ListChoooseDialog$ResultListener;

    .line 27
    return-void
.end method
