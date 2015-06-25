.class Landroid/support/v7/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 1572
    iput-object p1, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1582
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1574
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V

    .line 1579
    return-void
.end method
