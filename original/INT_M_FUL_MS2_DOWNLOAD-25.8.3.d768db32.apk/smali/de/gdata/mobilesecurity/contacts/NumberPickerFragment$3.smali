.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$3;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$3;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_filter:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$3;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->onFilterChanged()V

    .line 267
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 257
    return-void
.end method
