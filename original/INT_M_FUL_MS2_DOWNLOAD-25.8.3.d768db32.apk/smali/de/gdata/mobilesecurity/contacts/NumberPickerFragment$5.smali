.class Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$5;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment$5;->this$0:Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;

    # invokes: Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->requestFocusForEditText(Landroid/view/MenuItem;)V
    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;->access$400(Lde/gdata/mobilesecurity/contacts/NumberPickerFragment;Landroid/view/MenuItem;)V

    .line 292
    const/4 v0, 0x1

    return v0
.end method
