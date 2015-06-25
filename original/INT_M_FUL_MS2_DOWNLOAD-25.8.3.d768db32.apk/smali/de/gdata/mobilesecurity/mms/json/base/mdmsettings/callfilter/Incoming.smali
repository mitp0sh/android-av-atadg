.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AllowAnonymousCalls:Ljava/lang/Boolean;

.field private Contact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private Mode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->Contact:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllowAnonymousCalls()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->AllowAnonymousCalls:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getContact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->Contact:Ljava/util/List;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->Mode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAllowAnonymousCalls(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->AllowAnonymousCalls:Ljava/lang/Boolean;

    .line 20
    return-void
.end method

.method public setContact(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->Contact:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->Mode:Ljava/lang/Integer;

    .line 33
    return-void
.end method

.method public withAllowAnonymousCalls(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->AllowAnonymousCalls:Ljava/lang/Boolean;

    .line 28
    return-object p0
.end method

.method public withContact(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/incoming/Contact;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->Contact:Ljava/util/List;

    .line 55
    return-object p0
.end method

.method public withMode(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;->Mode:Ljava/lang/Integer;

    .line 41
    return-object p0
.end method
