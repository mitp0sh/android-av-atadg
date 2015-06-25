.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    # getter for: Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->m_newContactContainer:Landroid/view/View;
    invoke-static {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->access$100(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$1;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    # invokes: Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->checkData()V
    invoke-static {v0}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->access$200(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V

    .line 170
    return-void
.end method
