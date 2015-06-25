.class Lde/gdata/mobilesecurity/privacy/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/ChatFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/i;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p1, :cond_1

    move v0, v1

    .line 172
    :goto_0
    rem-int/lit16 v2, v0, 0xa0

    rsub-int v2, v2, 0xa0

    .line 173
    div-int/lit16 v0, v0, 0xa0

    add-int/lit8 v0, v0, 0x1

    .line 174
    if-nez v2, :cond_0

    .line 175
    add-int/lit8 v0, v0, -0x1

    .line 177
    :cond_0
    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/i;->a:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->e(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%d/%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 171
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
