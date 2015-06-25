.class Lde/gdata/mobilesecurity/fragments/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lde/gdata/mobilesecurity/fragments/ai;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/fragments/ai;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/16 v5, 0x1d

    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ai;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 162
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 163
    const-string v0, ""

    .line 165
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_2

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lde/gdata/mobilesecurity/fragments/ai;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 167
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ai;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_0
    :goto_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ai;->a:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ai;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lde/gdata/mobilesecurity/fragments/ai;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 181
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ai;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/fragments/ai;->b:Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;->a(Lde/gdata/mobilesecurity/fragments/AccountManagementRegisterFragment;I)I

    .line 185
    return-void

    .line 170
    :cond_2
    if-le v2, v5, :cond_3

    .line 171
    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_3
    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
