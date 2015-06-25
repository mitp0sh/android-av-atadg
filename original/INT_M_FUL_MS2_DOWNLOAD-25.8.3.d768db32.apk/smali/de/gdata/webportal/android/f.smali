.class Lde/gdata/webportal/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lde/gdata/webportal/android/RegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/webportal/android/RegisterFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lde/gdata/webportal/android/f;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/webportal/android/f;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lde/gdata/webportal/android/f;->a:Lde/gdata/webportal/android/RegisterFragment;

    invoke-static {v0}, Lde/gdata/webportal/android/RegisterFragment;->a(Lde/gdata/webportal/android/RegisterFragment;)V

    .line 60
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
