.class Lde/gdata/mobilesecurity/contacts/ContactAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$1;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;

    .line 219
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$1;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    # getter for: Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;
    invoke-static {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->access$200(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$1;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    # getter for: Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;
    invoke-static {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->access$200(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 228
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/contacts/ContactAdapter$1;->this$0:Lde/gdata/mobilesecurity/contacts/ContactAdapter;

    # getter for: Lde/gdata/mobilesecurity/contacts/ContactAdapter;->m_checkedContacts:Ljava/util/Set;
    invoke-static {v1}, Lde/gdata/mobilesecurity/contacts/ContactAdapter;->access$200(Lde/gdata/mobilesecurity/contacts/ContactAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/ContactAdapter$Data;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
