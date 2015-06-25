.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

.field final synthetic val$cb:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$2;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$2;->val$cb:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$2;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 177
    return-void
.end method
