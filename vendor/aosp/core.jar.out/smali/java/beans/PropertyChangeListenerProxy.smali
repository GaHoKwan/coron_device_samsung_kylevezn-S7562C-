.class public Ljava/beans/PropertyChangeListenerProxy;
.super Ljava/util/EventListenerProxy;
.source "PropertyChangeListenerProxy.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# instance fields
.field propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 0
    .parameter "propertyName"
    .parameter "listener"

    .prologue
    .line 42
    invoke-direct {p0, p2}, Ljava/util/EventListenerProxy;-><init>(Ljava/util/EventListener;)V

    .line 43
    iput-object p1, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/util/EventListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeListener;

    .line 57
    .local v0, listener:Ljava/beans/PropertyChangeListener;
    invoke-interface {v0, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 58
    return-void
.end method
